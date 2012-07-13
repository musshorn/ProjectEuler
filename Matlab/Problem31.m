%dat brute force
total = 0;
for i = 0:2 %£0, £1, £2
    for j = 0:4 %0, £0.5, £1, £1.5, £2
        for k = 0:10 %all combs of 20
            for l = 0:20 %combinations of 10
                for o = 0:40 %combinations of 5
                    for m = 0:100% combinations of 2
                        for n = 0:200 %combinations of 1
                            if i*100+j*50+k*20+l*10+o*5+m*2+n == 200
                                total = total+1;
                            end
                        end
                    end
                end
            end
        end
    end
end
total = total+1;
total