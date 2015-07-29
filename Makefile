cbv.out: cbv.hs
	ghc $^ -o $@

clean:
	rm -rf cbv.out

mrproper: clean
	rm -rf $~