#python
#sage
#Problem.1: Consider the elliptic curve 𝐸: 𝑦^2 = 𝑥^3 + (𝑎 + 1)*𝑥 + 𝑎 over extension field 𝐺𝐹(7^5) ≅ 𝑍_7[𝑎]/ 𝑔(𝑎) . 
#We know that 𝐸 has only one generator 𝑃. Suppose that 𝑄=𝑘𝑃 and 𝑄=(5*𝑎^4 + 𝑎^3 + 3*𝑎^2 + 𝑎 + 6, 5*𝑎^4 +6 *𝑎^3 + 2*𝑎^2 + 4*𝑎 + 6).
#Find 𝑘 = ?

F=GF(7)
K.<a>=F[]
g=K.irreducible_element(5)
#g = a^5 + a + 4

FF.<a>=GF(7^5,modulus=g)
EE=EllipticCurve(FF,[a+1,a])
P=EE.gens()[0]
# known P is the only generator

Q=EE(5*a^4 + a^3 + 3*a^2 + a + 6 , 5*a^4 + 6*a^3 + 2*a^2 + 4*a + 6)
for i in range(order(EE)):
     if i*P==Q:
         k=i
         print "k=", k

#don't be worry if every time you re-run the code output a different k
#k will be different if sage catch different generator, but the generator is unique.
