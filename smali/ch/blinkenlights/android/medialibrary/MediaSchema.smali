.class public Lch/blinkenlights/android/medialibrary/MediaSchema;
.super Ljava/lang/Object;
.source "MediaSchema.java"


# direct methods
.method public static createDatabaseSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE songs (_id INTEGER PRIMARY KEY, title TEXT NOT NULL, title_sort VARCHAR(64) NOT NULL, song_num INTEGER, disc_num INTEGER, year INTEGER, album_id INTEGER NOT NULL, playcount INTEGER NOT NULL DEFAULT 0, skipcount INTEGER NOT NULL DEFAULT 0, mtime TIMESTAMP DEFAULT (strftime(\'%s\', CURRENT_TIMESTAMP)), duration INTEGER NOT NULL, path VARCHAR(4096) NOT NULL, _flags INTEGER NOT NULL DEFAULT 0 );"

    .line 260
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE albums (_id INTEGER PRIMARY KEY, album TEXT NOT NULL, album_sort VARCHAR(64) NOT NULL, primary_album_year INTEGER, primary_artist_id INTEGER NOT NULL DEFAULT 0, mtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP );"

    .line 261
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE contributors (_id INTEGER PRIMARY KEY, _contributor TEXT NOT NULL, _contributor_sort TEXT NOT NULL, mtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP );"

    .line 262
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE contributors_songs (role INTEGER, _contributor_id INTEGER, song_id INTEGER, PRIMARY KEY(role,_contributor_id,song_id) );"

    .line 263
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX idx_contributors_songs ON contributors_songs (song_id, role);"

    .line 264
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE genres (_id INTEGER PRIMARY KEY, _genre TEXT NOT NULL, _genre_sort TEXT NOT NULL );"

    .line 265
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE genres_songs (_genre_id INTEGER, song_id INTEGER, PRIMARY KEY(_genre_id,song_id) );"

    .line 266
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE playlists (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_sort TEXT NOT NULL );"

    .line 267
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE playlists_songs (_id INTEGER PRIMARY KEY, playlist_id INTEGER NOT NULL, song_id INTEGER NOT NULL, position INTEGER NOT NULL );"

    .line 268
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX idx_playlist_id ON playlists_songs (playlist_id);"

    .line 269
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX idx_playlist_id_song ON playlists_songs (playlist_id, song_id);"

    .line 270
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _songs_albums_artists AS SELECT *, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id FROM songs LEFT JOIN albums ON songs.album_id = albums._id LEFT JOIN contributors_songs INDEXED BY idx_contributors_songs ON contributors_songs.role=0 AND contributors_songs.song_id = songs._id LEFT JOIN contributors AS _artist ON _artist._id = contributors_songs._contributor_id ;"

    .line 271
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _songs_albums_artists_huge AS SELECT *, _albumartist._contributor AS albumartist,_albumartist._contributor_sort AS albumartist_sort,_albumartist._id AS albumartist_id, _composer._contributor AS composer,_composer._contributor_sort AS composer_sort,_composer._id AS composer_id FROM _songs_albums_artists LEFT JOIN contributors_songs as __albumartists INDEXED BY idx_contributors_songs ON  __albumartists.role=2 AND __albumartists.song_id = _songs_albums_artists._id LEFT JOIN contributors AS _albumartist ON  _albumartist._id = __albumartists._contributor_id LEFT JOIN contributors_songs as __composers INDEXED BY idx_contributors_songs ON  __composers.role=1 AND __composers.song_id = _songs_albums_artists._id LEFT JOIN contributors AS _composer ON  _composer._id = __composers._contributor_id ;"

    .line 272
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _albums_artists AS SELECT albums.*, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id, SUM(duration) AS duration FROM albums LEFT JOIN contributors AS _artist ON _artist._id = albums.primary_artist_id LEFT JOIN songs ON songs.album_id = albums._id GROUP BY albums._id ;"

    .line 273
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _artists AS SELECT *, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id FROM contributors AS _artist WHERE _id IN  (SELECT _contributor_id FROM contributors_songs WHERE role=0 GROUP BY _contributor_id) ;"

    .line 274
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _albumartists AS SELECT *, _albumartist._contributor AS albumartist,_albumartist._contributor_sort AS albumartist_sort,_albumartist._id AS albumartist_id FROM contributors AS _albumartist WHERE _id IN  (SELECT _contributor_id FROM contributors_songs WHERE role=2 GROUP BY _contributor_id) ;"

    .line 275
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _composers AS SELECT *, _composer._contributor AS composer,_composer._contributor_sort AS composer_sort,_composer._id AS composer_id FROM contributors AS _composer WHERE _id IN  (SELECT _contributor_id FROM contributors_songs WHERE role=1 GROUP BY _contributor_id) ;"

    .line 276
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _playlists AS SELECT playlists.*, SUM(_s.duration) AS duration FROM playlists LEFT JOIN playlists_songs AS _ps ON playlists._id = _ps.playlist_id LEFT JOIN songs AS _s ON _s._id = _ps.song_id GROUP BY playlists._id ;"

    .line 277
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _playlists_songs AS SELECT *, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id FROM playlists_songs LEFT JOIN songs ON playlists_songs.song_id=songs._id LEFT JOIN albums ON songs.album_id = albums._id LEFT JOIN contributors_songs INDEXED BY idx_contributors_songs ON contributors_songs.role=0 AND contributors_songs.song_id = songs._id LEFT JOIN contributors AS _artist ON _artist._id = contributors_songs._contributor_id ;"

    .line 278
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static upgradeDatabaseSchema(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4

    const v0, 0x133c575

    if-ge p1, v0, :cond_0

    const-string v0, "DROP TABLE songs"

    .line 291
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE albums"

    .line 292
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE songs (_id INTEGER PRIMARY KEY, title TEXT NOT NULL, title_sort VARCHAR(64) NOT NULL, song_num INTEGER, disc_num INTEGER, year INTEGER, album_id INTEGER NOT NULL, playcount INTEGER NOT NULL DEFAULT 0, skipcount INTEGER NOT NULL DEFAULT 0, mtime TIMESTAMP DEFAULT (strftime(\'%s\', CURRENT_TIMESTAMP)), duration INTEGER NOT NULL, path VARCHAR(4096) NOT NULL, _flags INTEGER NOT NULL DEFAULT 0 );"

    .line 293
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE albums (_id INTEGER PRIMARY KEY, album TEXT NOT NULL, album_sort VARCHAR(64) NOT NULL, primary_album_year INTEGER, primary_artist_id INTEGER NOT NULL DEFAULT 0, mtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP );"

    .line 294
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const v0, 0x133c576

    if-ge p1, v0, :cond_1

    const-string v0, "UPDATE songs SET disc_num=1 WHERE disc_num IS null"

    .line 298
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const v0, 0x133c5e3

    if-ge p1, v0, :cond_2

    const-string v1, "UPDATE songs SET mtime=1 WHERE mtime=0"

    .line 303
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const v1, 0x133c5e9

    const-string v2, "CREATE VIEW _songs_albums_artists_huge AS SELECT *, _albumartist._contributor AS albumartist,_albumartist._contributor_sort AS albumartist_sort,_albumartist._id AS albumartist_id, _composer._contributor AS composer,_composer._contributor_sort AS composer_sort,_composer._id AS composer_id FROM _songs_albums_artists LEFT JOIN contributors_songs as __albumartists INDEXED BY idx_contributors_songs ON  __albumartists.role=2 AND __albumartists.song_id = _songs_albums_artists._id LEFT JOIN contributors AS _albumartist ON  _albumartist._id = __albumartists._contributor_id LEFT JOIN contributors_songs as __composers INDEXED BY idx_contributors_songs ON  __composers.role=1 AND __composers.song_id = _songs_albums_artists._id LEFT JOIN contributors AS _composer ON  _composer._id = __composers._contributor_id ;"

    if-ge p1, v1, :cond_3

    const-string v1, "CREATE VIEW _albumartists AS SELECT *, _albumartist._contributor AS albumartist,_albumartist._contributor_sort AS albumartist_sort,_albumartist._id AS albumartist_id FROM contributors AS _albumartist WHERE _id IN  (SELECT _contributor_id FROM contributors_songs WHERE role=2 GROUP BY _contributor_id) ;"

    .line 307
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE VIEW _composers AS SELECT *, _composer._contributor AS composer,_composer._contributor_sort AS composer_sort,_composer._id AS composer_id FROM contributors AS _composer WHERE _id IN  (SELECT _contributor_id FROM contributors_songs WHERE role=1 GROUP BY _contributor_id) ;"

    .line 308
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const v1, 0x133c588

    const v3, 0x133c6a7

    if-lt p1, v1, :cond_4

    if-ge p1, v3, :cond_4

    const-string v1, "DROP TABLE preferences"

    .line 313
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    if-lt p1, v3, :cond_5

    const v1, 0x133c770

    if-ge p1, v1, :cond_5

    const-string v1, "DELETE FROM songs WHERE _id IN (SELECT _id FROM _songs_albums_artists GROUP BY _id HAVING count(_id) > 1)"

    .line 318
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM albums WHERE _id NOT IN (SELECT album_id FROM songs);"

    .line 321
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM genres_songs WHERE song_id NOT IN (SELECT _id FROM songs);"

    .line 322
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM genres WHERE _id NOT IN (SELECT _genre_id FROM genres_songs);"

    .line 323
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM contributors_songs WHERE song_id NOT IN (SELECT _id FROM songs);"

    .line 324
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM contributors WHERE _id NOT IN (SELECT _contributor_id FROM contributors_songs);"

    .line 325
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const v1, 0x133c77b

    if-ge p1, v1, :cond_6

    const-string v1, "DROP VIEW _songs_albums_artists"

    .line 332
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP VIEW _songs_albums_artists_huge"

    .line 333
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP VIEW _playlists_songs"

    .line 334
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE VIEW _songs_albums_artists AS SELECT *, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id FROM songs LEFT JOIN albums ON songs.album_id = albums._id LEFT JOIN contributors_songs INDEXED BY idx_contributors_songs ON contributors_songs.role=0 AND contributors_songs.song_id = songs._id LEFT JOIN contributors AS _artist ON _artist._id = contributors_songs._contributor_id ;"

    .line 335
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE VIEW _playlists_songs AS SELECT *, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id FROM playlists_songs LEFT JOIN songs ON playlists_songs.song_id=songs._id LEFT JOIN albums ON songs.album_id = albums._id LEFT JOIN contributors_songs INDEXED BY idx_contributors_songs ON contributors_songs.role=0 AND contributors_songs.song_id = songs._id LEFT JOIN contributors AS _artist ON _artist._id = contributors_songs._contributor_id ;"

    .line 337
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    if-lt p1, v0, :cond_7

    const v0, 0x133eca1

    if-ge p1, v0, :cond_7

    const-string v0, "UPDATE songs SET mtime=1"

    .line 343
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const v0, 0x133ed51

    if-ge p1, v0, :cond_8

    const-string v0, "ALTER TABLE songs ADD COLUMN _flags INTEGER NOT NULL DEFAULT 0 "

    .line 347
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    const v0, 0x133edc0

    if-ge p1, v0, :cond_9

    const-string v0, "ALTER TABLE playlists RENAME TO _migrate"

    .line 352
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE playlists (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_sort TEXT NOT NULL );"

    .line 353
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "_migrate"

    const-string v1, "playlists"

    .line 354
    invoke-static {p0, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaMigrations;->migrate_to_20180416(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE _migrate"

    .line 355
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const v0, 0x133f01d

    if-ge p1, v0, :cond_a

    const-string v0, "DROP VIEW _albums_artists"

    .line 360
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW _albums_artists AS SELECT albums.*, _artist._contributor AS artist,_artist._contributor_sort AS artist_sort,_artist._id AS artist_id, SUM(duration) AS duration FROM albums LEFT JOIN contributors AS _artist ON _artist._id = albums.primary_artist_id LEFT JOIN songs ON songs.album_id = albums._id GROUP BY albums._id ;"

    .line 361
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const v0, 0x1341402

    if-ge p1, v0, :cond_b

    const-string p1, "CREATE VIEW _playlists AS SELECT playlists.*, SUM(_s.duration) AS duration FROM playlists LEFT JOIN playlists_songs AS _ps ON playlists._id = _ps.playlist_id LEFT JOIN songs AS _s ON _s._id = _ps.song_id GROUP BY playlists._id ;"

    .line 365
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
