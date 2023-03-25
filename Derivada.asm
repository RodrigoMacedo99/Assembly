# definir os valores de x
mov eax, 2 ; x = 2

# calcular 5x^2 e armazenar em ebx
mov ebx, eax ; ebx = x
mul ebx ; eax = x * x
mov ebx, 5 ; ebx = 5
mul ebx ; eax = 5 * x * x

# calcular 6x^3 e armazenar em ecx
mov ecx, eax ; ecx = 5 * x * x
mul ebx ; eax = 5 * x * x * 5
mov ebx, eax ; ebx = 5 * x * x * 5
mul eax ; eax = 5 * x * x * 5 * x
mov ecx, eax ; ecx = 5 * x * x * 5 * x

# calcular 3x e armazenar em edx
mov edx, eax ; edx = 5 * x * x * 5 * x
shr edx, 1 ; edx = edx / 2 (shift right by 1)
add edx, edx ; edx = edx + edx (multiply by 2)
add edx, edx ; edx = edx + edx (multiply by 2)

# calcular a derivada h'(x) = 3 + 10x + 18x^2 e armazenar em eax
add eax, ecx ; eax = 5 * x * x * 5 * x + 5 * x * x
add eax, edx ; eax = 5 * x * x * 5 * x + 5 * x * x + 3
add eax, edx ; eax = 5 * x * x * 5 * x + 5 * x * x + 3 + 3
add eax, ecx ; eax = 5 * x * x * 5 * x + 5 * x * x + 3 + 3 + 18 * x^2
mov ebx, 18 ; ebx = 18
mul ebx ; eax = 18 * 5 * x * x + 18 * 5 * x + 18 * 3 + 18 * 18 * x^2
#cmp eax, 18 ; compare eax with 18
#jne not_equal ; jump to not_equal if not equal
# eax = 18, the derivative of h(x) at x = 2