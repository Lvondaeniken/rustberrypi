
.PHONY: .build deploy

.build: 
	cargo build

deploy: .build
	scp ./target/armv7-unknown-linux-gnueabihf/release/test-pi vonl@192.168.1.180:/home/vonl/Documents/

run: deploy
	ssh -i ~/.ssh/pi2.pub pi@pi2.local "~/Documents/test-pi"
