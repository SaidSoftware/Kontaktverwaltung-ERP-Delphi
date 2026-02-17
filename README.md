# Kontaktverwaltung (ERP-Modul) – Delphi 12 / VCL / DevExpress / MS SQL Server

Desktop-Geschäftsanwendung zur Verwaltung von **Kontakten, Kunden und Lieferanten**.  
Das Projekt repräsentiert eine typische **Business-/ERP-Software im Mittelstand**, wie sie häufig in Deutschland in Warenwirtschafts-, Verwaltungs- oder Produktionsumgebungen eingesetzt wird.

Der Fokus liegt auf stabiler Benutzeroberfläche, Datenpflege, Wartbarkeit und Erweiterbarkeit bestehender Systeme (Legacy-Software + neue Funktionen).

---

## Funktionen

- Kontaktverwaltung (Anlegen, Bearbeiten, Löschen)
- Kundenverwaltung (Kundenstammdaten)
- Lieferantenverwaltung (Lieferantenstammdaten)
- Detailansichten für Datensätze
- Suche und Filterfunktionen
- CSV-Import / Export
- Qualitätsbewertung von Kontakten (`ContactQualityScore`)
- Formularbasierte Dateneingabe
- Datenbankgebundene UI (DevExpress-Komponenten)

---

## Technologie-Stack

- **Delphi 12 (Object Pascal)**
- **VCL Windows Desktop Application**
- **DevExpress VCL Components**
- **MS SQL Server**
- Datenzugriff über DataModule (zentrale DB-Verbindung)

---

## Architektur (vereinfacht)

Die Anwendung folgt einer klassischen Struktur von Desktop-Business-Software:

- UI-Forms (Benutzeroberfläche)
- DataModule (Datenbankzugriff)
- Business-Logik (z. B. ContactQualityScore)
- Import/Export-Logik (CSV)

Wichtige Module:
- `KontaktVerwaltung.*` – Hauptfenster
- `FKunde.*` – Kundenverwaltung
- `FLieferant.*` – Lieferantenverwaltung
- `KVDatamodule.*` – Datenbankverbindung (MS SQL Server)
- `CSV.pas` – CSV-Import/Export
- `ContactQualityScore.pas` – Business-Logik

---

## Voraussetzungen

- Embarcadero **Delphi 12**
- Installierte **DevExpress VCL Library**
- Zugriff auf **MS SQL Server**
---

## Installation & Start

### 1. Repository klonen
```bash
git clone https://github.com/SaidSoftware/Kontaktverwaltung-ERP-Delphi.git
