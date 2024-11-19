from threading import Semaphore, Thread
import time

semA = Semaphore(0)
semB = Semaphore(0)
semC = Semaphore(0)


def printA(ntimes):
    for i in range(ntimes):
        semB.release()          #zapytanie b
        semA.acquire()          #odpowiedz b
        semC.release()          #zapytanie c
        semA.acquire()          #odpowiedz c
        semB.release()          #zapytanie b2
        semA.acquire()          #odowiedz b2
        print('A ', end="")
        time.sleep(1)

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
threads.append(Thread(target=printA, args=(how_many,)))
threads.append(Thread(target=printB, args=(how_many*2,)))
threads.append(Thread(target=printC, args=(how_many,)))

for thread in threads:
    thread.start()
for thread in threads:
    thread.join()
print("\nAll done")