from threading import Semaphore, Thread
import time

semA = Semaphore(0)
semB = Semaphore(1)
semC = Semaphore(0)


def printA(ntimes):
    for i in range(ntimes):
        semA.acquire()
        print('A ', end="")
        time.sleep(1)
        semB.release()

def printB(ntimes):
    for i in range(ntimes):
        semB.acquire()
        print('B ', end="")
        time.sleep(1)
        semC.release()

def printC(ntimes):
    for i in range(ntimes):
        semC.acquire()
        print('C ', end="")
        time.sleep(1)
        semB.release()
        semC.acquire()
        semA.release()


how_many = 3
threads = []
threads.append(Thread(target=printA, args=(how_many,)))
threads.append(Thread(target=printB, args=(how_many*2,)))
threads.append(Thread(target=printC, args=(how_many,)))

for thread in threads:
    thread.start()
for thread in threads:
    thread.join()
print("\nAll done")