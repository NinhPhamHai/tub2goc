.class public Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;
.super Ljava/util/HashMap;
.source "MediaMetadataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final sFilterAny:Ljava/util/regex/Pattern;

.field private static final sFilterGenre:Ljava/util/regex/Pattern;

.field private static final sFilterLeftInt:Ljava/util/regex/Pattern;

.field private static final sFilterYear:Ljava/util/regex/Pattern;


# instance fields
.field private mForceBastp:Z

.field private mIsMediaFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 149

    const-string v0, ".*(\\d{4}).*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterYear:Ljava/util/regex/Pattern;

    const-string v0, "^0*(\\d+).*$"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterLeftInt:Ljava/util/regex/Pattern;

    const-string v0, "^([\\s\\S]*)$"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterAny:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*\\(?(\\d+)\\)?\\s*$"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterGenre:Ljava/util/regex/Pattern;

    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "Britpop"

    const-string v134, "Negerpunk"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "JPop"

    const-string v148, "Synthpop"

    .line 67
    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 244
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mIsMediaFile:Z

    .line 227
    iput-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mForceBastp:Z

    .line 245
    iput-boolean p2, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mForceBastp:Z

    .line 246
    invoke-direct {p0, p1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->extractMetadata(Ljava/lang/String;)V

    return-void
.end method

.method private addFiltered(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 445
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 449
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private convertNumericGenre()V
    .locals 4

    const-string v0, "GENRE"

    .line 458
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 463
    :cond_0
    sget-object v2, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterGenre:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 466
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 470
    sget-object v2, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->ID3_GENRES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    sget-object v3, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->ID3_GENRES:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v1, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterAny:Ljava/util/regex/Pattern;

    invoke-direct {p0, v1, v0, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->addFiltered(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private static decodeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "audio/mpeg"

    .line 485
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MP3"

    return-object p0

    :cond_0
    const-string v0, "audio/mp4"

    .line 487
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AAC"

    return-object p0

    :cond_1
    const-string v0, "audio/vorbis"

    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Ogg Vorbis"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "application/ogg"

    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "audio/flac"

    .line 493
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "FLAC"

    :cond_4
    return-object p0
.end method

.method private extractMetadata(Ljava/lang/String;)V
    .locals 11

    const-string v0, ": "

    .line 291
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting tags from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VanillaMusic"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Lch/blinkenlights/bastp/Bastp;

    invoke-direct {v1}, Lch/blinkenlights/bastp/Bastp;-><init>()V

    invoke-virtual {v1, p1}, Lch/blinkenlights/bastp/Bastp;->getTags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 297
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 301
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    .line 306
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error calling setDataSource for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 308
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating fis for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_8

    const/16 p1, 0x10

    .line 316
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/16 p1, 0x11

    .line 317
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/16 p1, 0x9

    .line 318
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 324
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "DURATION"

    .line 326
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v0, 0x14

    .line 329
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BITRATE"

    .line 330
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v0, 0xc

    .line 333
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "MIME"

    .line 334
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    .line 339
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object p1, v2

    :goto_2
    const/4 v0, -0x1

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v6, "MP3/Lame"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_1
    const-string v6, "OPUS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_2
    const-string v6, "FLAC"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_3
    const-string v6, "OGG"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_4
    const-string v6, "MP4"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_5
    const-string v6, "MP3/ID3v2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v10, :cond_5

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_3

    goto :goto_4

    .line 350
    :cond_3
    iget-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mForceBastp:Z

    if-eqz v0, :cond_4

    .line 351
    invoke-direct {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->populateSelf(Ljava/util/HashMap;)V

    goto :goto_5

    .line 356
    :cond_4
    :goto_4
    invoke-direct {p0, v3}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->populateSelf(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_5

    .line 344
    :cond_5
    invoke-direct {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->populateSelf(Ljava/util/HashMap;)V

    .line 358
    :goto_5
    invoke-direct {p0}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->convertNumericGenre()V

    const-string v0, "TITLE"

    .line 362
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ALBUM"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ARTIST"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    const/4 v4, 0x1

    :cond_7
    iput-boolean v4, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mIsMediaFile:Z

    .line 364
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    .line 319
    :cond_8
    :goto_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    .line 292
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected to be called on a clean HashMap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12d698eb -> :sswitch_5
        0x12af1 -> :sswitch_4
        0x1316f -> :sswitch_3
        0x20f768 -> :sswitch_2
        0x25203f -> :sswitch_1
        0x206e81ac -> :sswitch_0
    .end sparse-switch
.end method

.method private populateSelf(Landroid/media/MediaMetadataRetriever;)V
    .locals 10

    const/16 v0, 0x9

    .line 413
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, "TITLE"

    const-string v2, "ARTIST"

    const-string v3, "ALBUM"

    const-string v4, "ALBUM_ARTIST"

    const-string v5, "COMPOSER"

    const-string v6, "GENRE"

    const-string v7, "DISC_NUMBER"

    const-string v8, "TRACK_NUM"

    const-string v9, "YEAR"

    .line 416
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 418
    sget-object v2, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterAny:Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    .line 420
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 421
    aget v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-lt v3, v5, :cond_0

    .line 423
    sget-object v2, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterLeftInt:Ljava/util/regex/Pattern;

    :cond_0
    if-eqz v4, :cond_1

    .line 426
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    aget-object v4, v1, v3

    invoke-direct {p0, v2, v4, v5}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->addFiltered(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x7
        0x2
        0x1
        0xd
        0x4
        0x6
        0xe
        0x0
        0x8
    .end array-data
.end method

.method private populateSelf(Ljava/util/HashMap;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "TITLE"

    const-string v3, "TITLE"

    const-string v4, "ARTIST"

    const-string v5, "ARTIST"

    const-string v6, "ALBUM"

    const-string v7, "ALBUM"

    const-string v8, "ALBUMARTIST"

    const-string v9, "ALBUM_ARTIST"

    const-string v10, "COMPOSER"

    const-string v11, "COMPOSER"

    const-string v12, "GENRE"

    const-string v13, "GENRE"

    const-string v14, "TRACKNUMBER"

    const-string v15, "TRACK_NUM"

    const-string v16, "TRACKTOTAL"

    const-string v17, "TRACK_COUNT"

    const-string v18, "DISCNUMBER"

    const-string v19, "DISC_NUMBER"

    const-string v20, "DISCTOTAL"

    const-string v21, "DISC_COUNT"

    const-string v22, "YEAR"

    const-string v23, "YEAR"

    .line 374
    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    .line 380
    sget-object v3, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterAny:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    .line 382
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 384
    sget-object v3, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterLeftInt:Ljava/util/regex/Pattern;

    .line 386
    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 387
    aget-object v5, v2, v5

    aget-object v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v0, v3, v5, v6}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->addFiltered(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "ARTIST"

    .line 392
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ALBUM_ARTIST"

    if-nez v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 396
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "YEAR"

    .line 401
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "DATE"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 402
    sget-object v4, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->sFilterYear:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2, v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->addFiltered(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MIME"

    .line 267
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->decodeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BITRATE"

    .line 268
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const/16 v2, 0x20

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kbps"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMediaFile()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->mIsMediaFile:Z

    return v0
.end method
