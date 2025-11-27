# Conjuntos de Datos

Esta carpeta contiene los conjuntos de datos utilizados en los ejercicios del taller.

---

## 📊 Pokemon.csv

Dataset con estadísticas de Pokémon de todas las generaciones.

| Filas | Columnas | Tamaño |
| ----- | -------- | ------ |
| 1,215 | 13       | 74 KB  |

### Columnas

| Columna      | Descripción                                                 |
| ------------ | ----------------------------------------------------------- |
| `ID`         | Identificador único del Pokémon en la Pokédex Nacional      |
| `Name`       | Nombre del Pokémon en inglés                                |
| `Form`       | Forma o variante del Pokémon (Mega, Alolan, Galarian, etc.) |
| `Type1`      | Tipo primario del Pokémon (Fire, Water, Grass, etc.)        |
| `Type2`      | Tipo secundario del Pokémon (puede estar vacío)             |
| `Total`      | Suma total de todas las estadísticas base                   |
| `HP`         | Puntos de salud (Hit Points)                                |
| `Attack`     | Estadística de ataque físico                                |
| `Defense`    | Estadística de defensa física                               |
| `Sp. Atk`    | Estadística de ataque especial                              |
| `Sp. Def`    | Estadística de defensa especial                             |
| `Speed`      | Estadística de velocidad                                    |
| `Generation` | Generación en la que fue introducido el Pokémon             |

---

## 🦥 sloths.csv

Datos de ocurrencias de perezosos (familia Bradypodidae y Megalonychidae) del Global Biodiversity Information Facility (GBIF).

| Filas  | Columnas | Tamaño |
| ------ | -------- | ------ |
| 11,436 | 226      | 14 MB  |

### Columnas Principales

El dataset sigue el estándar Darwin Core. Las columnas más relevantes para análisis son:

| Columna                         | Descripción                                                    |
| ------------------------------- | -------------------------------------------------------------- |
| `gbifID`                        | Identificador único del registro en GBIF                       |
| `scientificName`                | Nombre científico completo de la especie                       |
| `vernacularName`                | Nombre común del animal                                        |
| `kingdom`                       | Reino taxonómico (Animalia)                                    |
| `phylum`                        | Filo taxonómico (Chordata)                                     |
| `class`                         | Clase taxonómica (Mammalia)                                    |
| `order`                         | Orden taxonómico (Pilosa)                                      |
| `family`                        | Familia taxonómica (Bradypodidae, Megalonychidae)              |
| `genus`                         | Género taxonómico                                              |
| `species`                       | Nombre de la especie                                           |
| `eventDate`                     | Fecha del avistamiento/registro                                |
| `year`                          | Año del registro                                               |
| `month`                         | Mes del registro                                               |
| `day`                           | Día del registro                                               |
| `countryCode`                   | Código ISO del país (CR, PA, BR, etc.)                         |
| `stateProvince`                 | Estado o provincia                                             |
| `locality`                      | Localidad específica del avistamiento                          |
| `decimalLatitude`               | Latitud en grados decimales                                    |
| `decimalLongitude`              | Longitud en grados decimales                                   |
| `coordinateUncertaintyInMeters` | Incertidumbre de las coordenadas en metros                     |
| `basisOfRecord`                 | Tipo de registro (HUMAN_OBSERVATION, PRESERVED_SPECIMEN, etc.) |
| `institutionCode`               | Código de la institución que reportó el registro               |
| `recordedBy`                    | Nombre del observador/colector                                 |
| `individualCount`               | Número de individuos observados                                |
| `elevation`                     | Elevación en metros sobre el nivel del mar                     |
| `iucnRedListCategory`           | Categoría de conservación IUCN                                 |

---

## 🐋 whales.csv

Datos de ocurrencias de ballenas azules (*Balaenoptera musculus*) del Global Biodiversity Information Facility (GBIF).

| Filas  | Columnas | Tamaño |
| ------ | -------- | ------ |
| 30,507 | 226      | 75 MB  |

### Columnas Principales

El dataset sigue el estándar Darwin Core. Las columnas más relevantes para análisis son:

| Columna                         | Descripción                                                     |
| ------------------------------- | --------------------------------------------------------------- |
| `gbifID`                        | Identificador único del registro en GBIF                        |
| `scientificName`                | Nombre científico completo (*Balaenoptera musculus*)            |
| `vernacularName`                | Nombre común (Blue Whale, Ballena Azul)                         |
| `kingdom`                       | Reino taxonómico (Animalia)                                     |
| `phylum`                        | Filo taxonómico (Chordata)                                      |
| `class`                         | Clase taxonómica (Mammalia)                                     |
| `order`                         | Orden taxonómico (Cetacea)                                      |
| `family`                        | Familia taxonómica (Balaenopteridae)                            |
| `genus`                         | Género taxonómico (Balaenoptera)                                |
| `species`                       | Nombre de la especie                                            |
| `eventDate`                     | Fecha del avistamiento/registro                                 |
| `year`                          | Año del registro                                                |
| `month`                         | Mes del registro                                                |
| `day`                           | Día del registro                                                |
| `countryCode`                   | Código ISO del país                                             |
| `stateProvince`                 | Estado o provincia                                              |
| `locality`                      | Localidad específica del avistamiento                           |
| `decimalLatitude`               | Latitud en grados decimales                                     |
| `decimalLongitude`              | Longitud en grados decimales                                    |
| `coordinateUncertaintyInMeters` | Incertidumbre de las coordenadas en metros                      |
| `waterBody`                     | Cuerpo de agua (océano, mar)                                    |
| `basisOfRecord`                 | Tipo de registro (HUMAN_OBSERVATION, MACHINE_OBSERVATION, etc.) |
| `institutionCode`               | Código de la institución que reportó el registro                |
| `recordedBy`                    | Nombre del observador/colector                                  |
| `individualCount`               | Número de individuos observados                                 |
| `depth`                         | Profundidad en metros (para registros submarinos)               |
| `iucnRedListCategory`           | Categoría de conservación IUCN (EN - Endangered)                |

---

## 📚 Fuentes

- **Pokemon.csv**: Datos recopilados de fuentes públicas de estadísticas de Pokémon
- **sloths.csv** y **whales.csv**: [GBIF - Global Biodiversity Information Facility](https://www.gbif.org/)
  - Los datos de GBIF están disponibles bajo licencias Creative Commons
  - Darwin Core Standard: https://dwc.tdwg.org/

---

## 💡 Uso Sugerido

### Pokemon.csv
- Análisis exploratorio de datos (EDA)
- Visualización de distribuciones de estadísticas
- Comparaciones entre tipos y generaciones
- Práctica con filtrado y agrupación

### sloths.csv y whales.csv
- Análisis geoespacial y mapeo
- Series temporales de avistamientos
- Distribución geográfica de especies
- Análisis de patrones de biodiversidad
- Práctica con datasets grandes y datos del mundo real
