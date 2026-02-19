# Transport Tycoon - Tervezési fázis munkaelosztás

Itt egy javaslat arra, hogyan osszuk fel a rendszert 4 felé úgy, hogy mindenki párhuzamosan tudjon dolgozni.

---

## 📋 Választott extrák (javaslat)

A max jegyhez **5 komplexitási pont** kell. Az alapjáték 1.5 pontot ér.

**Ajánlott csomag:** Erdők (0.5) + Folyók/Tavak (0.5) + Domborzat (1.0) + Térképgenerálás (0.5) + Minimap (0.5) + Perzisztencia (0.5) + Városnövekedés (0.5) = **4.0 pont**.

Így összesen **5.5 pontunk** van, tehát bőven megvagyunk.

---

## 1. Gazdaság & Játékmenet

**Te felelsz a játékos tőkéjéért és a játékidőért.**

**Fő logikák:**

- Pénzügyi rendszer (mindent euróban számolva és tárolva)
- 4-féle idősebesség (pause/1x/2x/4x)
- Győzelem/csőd állapotok

**Felelősség a dokumentációban:**

- `economy.md` (szöveges követelmények)

**Felelősség UML-ben:**

- 3-4 db Use Case leírás (pl. időszabályozás, egyenleg követése euróban)
- Saját Use Case diagram
- Állapotgép (State diagram) a játékállapotokhoz
- A saját logikád osztálydiagramja (`GameManager`, `Economy`, `TimeManager`)

---

## 2. Járművek & Útvonalak

**Te felelsz mindenért, ami mozog a térképen.**

**Fő logikák:**

- 6 járműkategória fizikai tulajdonságai
- A→B→C→A útvonalak logikája
- A járművek mozgásszabályai
- Be- és kirakodás a megállókban

**Felelősség a dokumentációban:**

- `vehicles.md` (szöveges követelmények)

**Felelősség UML-ben:**

- 4-5 db Use Case leírás (pl. jármű vásárlás, útvonal kijelölés)
- Saját Use Case diagram
- Szekvenciadiagram (Sequence) a járművek mozgásáról és rakodásáról
- A saját logikád osztálydiagramja (`Vehicle`, `Route`, `Station`, `Cargo`)

---

## 3. Térkép & Infrastruktúra

**A statikus világ és az építkezés a te asztalod.**

**Fő logikák:**

- A rácsalapú térkép (min 50x50) tárolása
- Procedurális térképgenerálás
- A városok (3x3) és ipari létesítmények logikája
- Útépítés ellenőrzése (pl. van-e ott tó vagy hegy)

**Felelősség a dokumentációban:**

- `map.md` (szöveges követelmények)

**Felelősség UML-ben:**

- 4-5 db Use Case leírás (pl. térkép generálás, út lerakása, város terjeszkedése)
- Saját Use Case diagram
- Aktivitásdiagram (Activity) a térképgenerálás folyamatáról
- A saját logikád osztálydiagramja (`Map`, `Tile`, `City`, `Industry`)

---

## 4. Architektúra & UI (Az Építésvezető)

**Te rakod le a projekt alapjait, és integrálod a többiek munkáját. Nem a végén takarítasz, hanem te adod a vázat, amire a többiek építkeznek.**

**Fő logikák:**

- MVC (vagy más) keretrendszer definiálása
- A közös "cross-cutting" funkciók kitalálása (Perzisztencia/Mentés, Minimap)
- UI felületek megtervezése

**Felelősség a dokumentációban:**

- `architecture.md` (tech stack, design patternek)
- UI Mockupok rajzolása (képernyőtervek pl. gombokról, menükről)

**Felelősség UML-ben:**

- 3-4 db Use Case leírás (Mentés, Betöltés, UI interakció)
- **Komponens diagram** (hogy kommunikál a Térkép a Járművekkel)
- **Alap (Skeleton) Osztálydiagram:** Felvázolod a fő interfészeket, amihez az 1-2-3. tag hozzá tudja kötni a saját osztályait
- **Teljes diagramok összeállítása:** PlantUML `!include` parancsokkal egy közös fájlba húzod a többiek diagramjait, így a "Teljes" leadandó diagram automatikusan generálódik

---

## 📁 GitLab mappa struktúra

Így hozzuk létre a repót, hogy átlátható legyen:

```
docs/
├── requirements/      (A 4 db .md fájl a fenti leosztás alapján)
├── usecases/          (Az összes UC-xx.md leírás bedobálva)
├── diagrams/          (A PlantUML .puml fájlok)
├── ui_mockups/        (A 4. ember képernyőtervei png/jpg formátumban)
└── architecture/      (döntések, tech stack leírása)
```

---

## ❓Átbeszélendő

1. **Nevek a szerepek mellé:** Ki melyik 1-4. részt viszi?
2. **Extrák véglegesítése:** Jó a fenti 4.0 pontos lista?
3. **Tech Stack:** Milyen nyelven/motorban csináljuk majd (Unity, C#)?
4. **GitLab setup:** Ki csinálja meg a repót és az Issue-kat?

---
