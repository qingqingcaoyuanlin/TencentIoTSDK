#if compile x86 demo on unbuntu 64.
CC:=gcc

all:app1 app2 app3 
	@echo build complete


clean:
	-rm SDKDemo_bind SDKDemo_video SDKDemo_filetransfer

app1:demo_bind.c
	$(CC) demo_bind.c -shared -fPIC -o SDKDemo_bind -O0 -g3 -I"./include" -L"./lib" -ltxdevicesdk -lpthread -ldl -lstdc++

app2:demo_video.c
	$(CC) demo_video.c -shared -fPIC -o SDKDemo_video -O0 -g3 -I"./include" -L"./lib" -ltxdevicesdk -lpthread -ldl -lstdc++

app3:demo_filetransfer.c
	$(CC) demo_filetransfer.c -shared -fPIC -o SDKDemo_filetransfer -O0 -g3 -I"./include" -L"./lib" -ltxdevicesdk -lpthread -ldl -lstdc++

