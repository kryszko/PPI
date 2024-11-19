from threading import Semaphore, Thread
import time

semA = Semaphore(1)
semB = Semaphore(0)
semC = Semaphore(0)


def printA(ntimes):
    for i in range(ntimes):
        semA.acquire()
        print('A ', end="")
        time.sleep(1)
        semC.release()
        semA.acquire()
        semB.release()

def printB(ntimes):
    for i in range(ntimes):
        semB.acquire()
        print('B ', end="")
        time.sleep(1)
        semA.release()

def printC(ntimes):
    for i in range(ntimes):
        semC.acquire()
        print('C ', end="")
        time.sleep(1)
        semA.release()

how_many = 2
threads = []
threads.append(Thread(target=printA, args=(how_many*2,)))
threads.append(Thread(target=printB, args=(how_many,)))
threads.append(Thread(target=printC, args=(how_many*2,)))

for thread in threads:
    thread.start()
for thread in threads:
    thread.join()
print("\nAll done")