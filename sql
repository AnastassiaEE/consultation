Первое задание: Väljastada tabeli kujul Linn Linna kaupluste müüjate nimed

Выводим столбик городов, рядом столбик магазинов в этих городах, рядом работников магазинов:

SELECT Linnad.Linn, Kauplused.Kauplus, Myyjad.Nimi
FROM (Kauplused INNER JOIN Myyjad ON Kauplused.KauplusID = Myyjad.KauplusID) INNER JOIN Linnad ON Kauplused.LinnID = Linnad.LinnID;









Второе задание: Koostada SQL päring, mis väljastab konkreetse kaupluse (sisestatada 
parameetriaknasse) noorima ostja vanuse

Вспомогательная таблица для второго задания, в которой выводим столбик магазинов, столбик покупателей магазинов и столбик с возрастом покупателей (чтобы сверять результат):

SELECT Kauplused.Kauplus, Ostjad.Nimi, Ostjad.Vanus
FROM (Kauplused INNER JOIN [Ostja Kauplus] ON Kauplused.KauplusID = [Ostja Kauplus].KauplusID) INNER JOIN Ostjad ON [Ostja Kauplus].OstjaID = Ostjad.OstjaID;

Выводим возраст самого младшего покупателя по магазину:

SELECT MIN(Ostjad.Vanus)
FROM (Kauplused INNER JOIN [Ostja Kauplus] ON Kauplused.KauplusID = [Ostja Kauplus].KauplusID) INNER JOIN Ostjad ON [Ostja Kauplus].OstjaID = Ostjad.OstjaID
WHERE Kauplused.Kauplus = [Sisesta kauplus:];
