/*
Adatbázis létrehozása feladat

Készíts adatbázis-táblákat a feladat leírása alapján!
(Magát az adatbázist nem kell létrehoznod.)

Amit be kell adnod:
    - a táblák létrehozásának MySQL utasítása
    - a táblák mezőinek létrehozásához és beállításához szükséges MySQL utasítások

Az utasításokat jelen fájl tartalmazza!

A bónusz feladat megoldása nem kötelező.

Nem futtatható (azaz szintaktikai hibás) SQL utasításokért nem jár pont.
A feladatot részben teljesítő megoldásokért részpontszám jár.
A bónusz feladatnál csak a teljesen helyes megoldásért jár pont.

A feladat leírása törölhető.

Jó munkát!
*/

/*
Adatbázis-táblák létrehozása (20 pont)

Az általad létrehozott adatbázist egy üzenetküldő alkalmazáshoz szeretnénk használni.
Az alkalmazásban a felhasználók regisztrálás után tudnak üzenetet küldeni szintén regisztrált felhasználóknak,
valamint a kapott üzenetekre válaszolhatnak.
Nincs lehetőség több címzett megadására - azaz egy üzenetet csak egy felhasználó részére lehet küldeni.

Az adatbázisnak képesnek kell lennie a következő adatok tárolására:
    1. regisztrált felhasználók adatai
        - kötelező adatok: név, email-cím, jelszó, aktív felhasználó-e, a regisztrálás időpontja
    2. a regisztrált felhasználók által egymásnak küldött üzenetek adatai
        - kötelező adatok: küldő, címzett, üzenet szövege, az üzenet küldésének időpontja,
          továbbá ha az üzenet egy korábban kapottra válasz, akkor hivatkozás a megválaszolt üzenetre

Kritériumok az adatbázissal kapcsolatban:
    - legalább kettő, legfeljebb négy táblát tartalmazzon
    - legyen legalább egy kapcsolat a létrehozott táblák között (idegen kulccsal)
      (egy tábla saját magával is kapcsolódhat)
    - a fent leírt adatokon kívül más adatokat is tárolhat, de egy táblán legfeljebb 8 mező lehet
    - az adatbázis, a táblák és a mezők elnevezése rajtad áll, azonban használj angol megnevezéseket, méghozzá következetesen
      (ha az egyik táblában camel-case szerinti mező-neveket adtál, akkor a másik táblában is tégy úgy)

*/

CREATE DATABASE `message` _new database

1.tábla létrehozása:

CREATE TABLE `message`.`user`
(`user_id` INT NOT NULL AUTO_INCREMENT ,
`user_name` VARCHAR(100) NOT NULL ,
`user_email` VARCHAR(100) NOT NULL ,
`user_email_password` VARCHAR(100) NOT NULL ,
`user_activ` BOOLEAN  NULL ,
`user_date` DATE NOT NULL ,
 PRIMARY KEY (`user_id`)) ENGINE = InnoDB;




 2. tábla létrehozása:
CREATE TABLE `message`.`pm`
(`pm_id` INT NOT NULL AUTO_INCREMENT ,
`pm_from` VARCHAR(100) NOT NULL ,
`pm_to` VARCHAR(100) NOT NULL ,
`pm_text` TEXT NOT NULL ,
`pm_date` DATE NOT NULL ,
`pm_answer` BOOLEAN NULL ,
PRIMARY KEY (`pm_id`)) ENGINE = InnoDB;



/*


-- ---------------------------------------------------------------------------------------------------------------------

/*
Bónusz feladat (5 pont)

Adj hozzá adatokat mindegyik táblához!
(Az adatoknak nem kell valósnak lenniük. Egy felhasználói email-cím lehet például: 'valami@valami.va')

1.tábla adatsor
 INSERT INTO `pm`( `pm_from`, `pm_to`, `pm_text`, `pm_date`, `pm_answer`)
 VALUES ('tolem','neked','valami szoveg','2022-07-09','0');

 2.tábla adatsor
 INSERT INTO `user`( `user_name`, `user_email`, `user_email_password`, `user_activ`, `user_date`)
 VALUES ('Kis Cica','kisCica@modul3.hu','otoslesz_érzem','1','2022-07-05');

*/
