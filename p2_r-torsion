#p2 r-torsion group
'''
Consider the elliptic curve 𝐸: 𝑦^2 = 𝑥^3 + 2 over 𝐺𝐹(37), we know that
#𝐸(𝑍_37) = 49, so we take 𝑟 = 7 and consider its 7 − 𝑡𝑜𝑟𝑠𝑖𝑜𝑛, 𝐸[7]. Find the based field subgroup 𝒢_1 and the trace zero subgroup 𝒢_2 of 𝐸[7].
Note that 𝒢_1 = 𝐸[7] ∩ ker (𝜋 − [1]) and 𝒢% = 𝐸[7] ∩ ker (𝜋 − [37]), where 𝜋 is the Forbenius map of 𝐸.
'''

#input problem
q=37
F=GF(q)
E=EllipticCurve(F,[0,2])
r=7

#since 7 is not divide by char(F)=37
#find embedding deg of F
for k in range(1,37):
    if(37^k -1)%r==0:
        break
    #we have k=3


#irreducible element
K.<u>=F[]
g=K.irreducible_element(k)

#note g = u^3 + 6*u + 35, F_37^3 =F(u) where u is the root of g
#based field is F37, trace zero subgroup?

KK.<a> = GF(37^k, modulus = g)
EE=EllipticCurve(KK,[0,2])

# r-torsion group
pt=[]
for point in EE:
    if r*point==EE(0,1,0):
        pt.append(point)

# trace
def traceMap(P, q, k):
    x = P[0]
    y = P[1]
    tracePoint = EE(0,1,0)
    for i in range(k):
    	tracePoint += EE(x^(q^i),y^(q^i),1)
    return tracePoint

#based field subgroup G1
print 'G1:'
for point in E:
    if point == E(0,1,0):
        print point
    elif point!=E(0,1,0) and r*point==E(0,1,0):
        print point
print '------------------------'
#trace zero subgroup G2
print 'G2:'
for point in pt:
    try:
        if point==EE(0,1,0):
            print point
        elif traceMap(point,q,k)==EE(0,1,0):
            print point
    except:
        pass

