.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/TopChartsUtil;
.super Ljava/lang/Object;
.source "TopChartsUtil.java"


# direct methods
.method public static parseArtistData(Ljava/lang/String;Ljava/lang/String;Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    const-string p3, "contents"

    .line 654
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "%2F"

    .line 656
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 662
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;-><init>()V

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setTitle(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setId(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setCurrentRanks(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPeriodsOnChart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setPeriodsOnChart(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setPreviousRanks(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getViewCount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setViewCount(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setCountry(Ljava/lang/String;)V

    .line 674
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "sectionListRenderer"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 675
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "musicAnalyticsSectionRenderer"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "content"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "perspectiveMetadata"

    .line 680
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    const-string p3, "heroMetadata"

    .line 685
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "heroBannerImageUrl"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "/w64-h36-p-l90-rj/"

    .line 686
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "w64-h36-p-l90-rj"

    const-string v1, "w720-h405-p-l90-rj"

    .line 687
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 688
    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setThumbnail(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string p2, "trackTypes"

    .line 697
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "trackViews"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 698
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 700
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v1, "encryptedVideoId"

    .line 704
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v3, "name"

    .line 711
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v4, 0x0

    :try_start_5
    const-string v5, "viewCount"

    .line 718
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 720
    :try_start_6
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v5, v4

    :goto_1
    :try_start_7
    const-string v6, "thumbnail"

    .line 724
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v6, "thumbnails"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 725
    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v6, "url"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 730
    :catch_2
    :try_start_8
    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {p3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 731
    invoke-virtual {p3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p3, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 735
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->getVideoViewsFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setViewCount(Ljava/lang/String;)V

    .line 737
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_3
    move-exception p3

    .line 713
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception p3

    .line 706
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 743
    :cond_0
    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setMusicList(Ljava/util/List;)V

    .line 745
    new-instance p0, Lcom/google/gson/GsonBuilder;

    invoke-direct {p0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p0

    .line 747
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->saveArtistCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    return-object v2

    .line 763
    :catch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "service error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseTopChartsData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/DataListener;)V
    .locals 29

    const-string v1, "viewCount"

    const-string v2, "heroBannerImageUrl"

    const-string v3, "title"

    const-string v4, "heroMetadata"

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "contents"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "sectionListRenderer"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "contents"

    .line 65
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "musicAnalyticsSectionRenderer"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "content"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "artists"

    .line 69
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v0, "artistViews"

    .line 70
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 72
    new-instance v13, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    invoke-direct {v13}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_50

    .line 76
    :try_start_1
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_50

    const/4 v15, 0x0

    .line 82
    :goto_0
    :try_start_3
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 84
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_50

    const/4 v14, 0x0

    .line 88
    :goto_1
    :try_start_5
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 90
    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 93
    :goto_2
    invoke-virtual {v13, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setTitle(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v13, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setThumbnail(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->getVideoViewsFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setViewCount(Ljava/lang/String;)V

    .line 97
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 99
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_50

    const-string v13, "periodsOnChart"

    const-string v14, "previousPosition"

    const-string v15, "currentPosition"

    const-string v9, "url"

    move-object/from16 v16, v5

    const-string v5, "chartEntryMetadata"

    move-object/from16 v17, v6

    const-string v6, "thumbnails"

    move-object/from16 v18, v7

    const-string v7, "thumbnail"

    if-ge v11, v0, :cond_1

    move-object/from16 v19, v2

    .line 104
    :try_start_7
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;-><init>()V

    move-object/from16 v20, v3

    .line 106
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_f

    :try_start_8
    const-string v0, "name"
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_e

    move-object/from16 v21, v12

    .line 110
    :try_start_9
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_d

    :try_start_a
    const-string v0, "id"
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_c

    move-object/from16 v22, v4

    .line 118
    :try_start_b
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 126
    :try_start_c
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5

    .line 127
    :try_start_d
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->getVideoViewsFormat(J)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    const/16 v23, 0x0

    goto :goto_4

    :catch_6
    move-exception v0

    const/16 v23, 0x0

    goto :goto_6

    .line 131
    :goto_4
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_5
    move-object/from16 v0, v23

    goto :goto_7

    .line 129
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_5

    .line 135
    :goto_7
    :try_start_f
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 136
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_8

    :catch_7
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_0

    :try_start_10
    const-string v7, "="

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x0

    .line 142
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " https:"

    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_f

    .line 153
    :try_start_11
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_9

    :catch_8
    const/4 v5, 0x0

    .line 159
    :goto_9
    :try_start_12
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_a

    :catch_9
    const/4 v14, 0x0

    .line 165
    :goto_a
    :try_start_13
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_b

    :catch_a
    const/4 v3, 0x0

    .line 170
    :goto_b
    :try_start_14
    invoke-virtual {v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setId(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setTitle(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setViewCount(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setCurrentRanks(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setPeriodsOnChart(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setPreviousRanks(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->setThumbnail(Ljava/lang/String;)V

    .line 178
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_c

    :catch_c
    move-exception v0

    move-object/from16 v22, v4

    .line 120
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v21, v12

    .line 112
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_f

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v12, v21

    move-object/from16 v4, v22

    const/4 v9, 0x0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    .line 182
    :try_start_15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_50

    return-void

    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    const/4 v2, 0x1

    :try_start_16
    const-string v0, "videos"

    .line 193
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "videoViews"

    .line 194
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_15

    move-object/from16 v4, v22

    .line 195
    :try_start_17
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    new-instance v11, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v11}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_14

    move-object/from16 v12, v20

    .line 201
    :try_start_18
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_10

    move-object/from16 v2, v20

    goto :goto_f

    :catch_10
    const/4 v2, 0x0

    :goto_f
    move-object/from16 v21, v3

    move-object/from16 v3, v19

    .line 207
    :try_start_19
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_11

    move-object/from16 v28, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v28

    goto :goto_10

    :catch_11
    move-object/from16 v19, v8

    const/4 v8, 0x0

    :goto_10
    move-object/from16 v22, v1

    :try_start_1a
    const-string v1, "subTitle"

    .line 213
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_11

    :catch_12
    const/4 v0, 0x0

    .line 222
    :goto_11
    :try_start_1b
    invoke-virtual {v11, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v11, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v11, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_13

    move-object/from16 v1, v18

    .line 226
    :try_start_1c
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_16

    goto :goto_12

    :catch_13
    move-object/from16 v1, v18

    goto :goto_12

    :catch_14
    move-object/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v12, v20

    move-object/from16 v19, v8

    goto :goto_12

    :catch_15
    move-object/from16 v3, v19

    move-object/from16 v12, v20

    move-object/from16 v4, v22

    move-object/from16 v22, v1

    move-object/from16 v19, v8

    move-object/from16 v1, v18

    const/16 v21, 0x0

    :catch_16
    :goto_12
    move-object/from16 v2, v21

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    .line 233
    :goto_13
    :try_start_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_50

    if-ge v8, v0, :cond_3

    .line 236
    :try_start_1e
    new-instance v11, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v11}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    move-object/from16 v18, v3

    .line 237
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_24

    move-object/from16 v21, v2

    .line 241
    :try_start_1f
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_23

    .line 249
    :try_start_20
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_17

    move-object/from16 v23, v6

    const/4 v6, 0x2

    .line 250
    :try_start_21
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_18

    move-object v6, v0

    goto :goto_14

    :catch_17
    move-object/from16 v23, v6

    :catch_18
    const/4 v6, 0x0

    :goto_14
    :try_start_22
    const-string v0, "videoDuration"

    .line 258
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_1a

    .line 259
    :try_start_23
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_19

    goto :goto_16

    :catch_19
    move-exception v0

    goto :goto_15

    :catch_1a
    move-exception v0

    const/16 v24, 0x0

    .line 263
    :goto_15
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_24

    :catch_1b
    move-object/from16 v0, v24

    goto :goto_16

    :catch_1c
    const/4 v0, 0x0

    :goto_16
    move-object/from16 v24, v9

    :try_start_25
    const-string v9, "id"

    .line 268
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_22

    .line 274
    :try_start_26
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_24

    if-eqz v25, :cond_2

    move-object/from16 v25, v7

    :goto_17
    move-object/from16 v27, v14

    move-object/from16 v26, v15

    goto/16 :goto_1d

    :cond_2
    move-object/from16 v25, v7

    :try_start_27
    const-string v7, "channelName"

    .line 279
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_1d

    goto :goto_18

    :catch_1d
    const/4 v7, 0x0

    .line 286
    :goto_18
    :try_start_28
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_1e

    goto :goto_19

    :catch_1e
    const/4 v3, 0x0

    .line 293
    :goto_19
    :try_start_29
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_1f

    move-object/from16 v28, v26

    move-object/from16 v26, v15

    move-object/from16 v15, v28

    goto :goto_1a

    :catch_1f
    move-object/from16 v26, v15

    const/4 v15, 0x0

    .line 299
    :goto_1a
    :try_start_2a
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_20

    move-object/from16 v28, v27

    move-object/from16 v27, v14

    move-object/from16 v14, v28

    goto :goto_1b

    :catch_20
    move-object/from16 v27, v14

    const/4 v14, 0x0

    .line 305
    :goto_1b
    :try_start_2b
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_21

    goto :goto_1c

    :catch_21
    const/4 v3, 0x0

    .line 309
    :goto_1c
    :try_start_2c
    invoke-virtual {v11, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setCurrentRanks(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v11, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPreviousRanks(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v11, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v11, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v11, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v11, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v11, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setDuration(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v11, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPeriodsOnChart(Ljava/lang/String;)V

    .line 318
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :catch_22
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v27, v14

    move-object/from16 v26, v15

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_24

    goto :goto_1d

    :catch_23
    move-object/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v24, v9

    goto :goto_17

    :goto_1d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v18

    move-object/from16 v2, v21

    move-object/from16 v6, v23

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_13

    :catch_24
    move-exception v0

    .line 322
    :try_start_2d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v24, v9

    move-object/from16 v27, v14

    move-object/from16 v26, v15

    const-string v0, "videos"

    .line 330
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "videoViews"

    .line 331
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 334
    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_50

    .line 338
    :try_start_2e
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    move-object v7, v0

    .line 340
    :try_start_2f
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_2f} :catch_50

    const/4 v14, 0x0

    :goto_1e
    :try_start_30
    const-string v0, "subTitle"

    .line 344
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_26

    move-object v7, v0

    goto :goto_1f

    :catch_26
    move-exception v0

    .line 346
    :try_start_31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_31} :catch_50

    const/4 v7, 0x0

    :goto_1f
    move-object/from16 v8, v18

    .line 350
    :try_start_32
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_32} :catch_27

    goto :goto_20

    :catch_27
    move-exception v0

    move-object v3, v0

    .line 352
    :try_start_33
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 355
    :goto_20
    invoke-virtual {v6, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v6, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    move-object/from16 v3, v17

    .line 359
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 361
    :goto_21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_33} :catch_50

    if-ge v6, v0, :cond_5

    .line 364
    :try_start_34
    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 365
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_34} :catch_38

    .line 369
    :try_start_35
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_35} :catch_37

    move-object/from16 v14, v25

    .line 377
    :try_start_36
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_36} :catch_2b

    move-object/from16 v15, v23

    :try_start_37
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_37} :catch_2a

    move-object/from16 v17, v2

    const/4 v2, 0x2

    .line 378
    :try_start_38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_38} :catch_29

    move-object/from16 v2, v24

    :try_start_39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_39} :catch_28

    move-object/from16 v18, v1

    move-object v1, v0

    goto :goto_24

    :catch_28
    move-exception v0

    goto :goto_23

    :catch_29
    move-exception v0

    goto :goto_22

    :catch_2a
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_22

    :catch_2b
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v15, v23

    :goto_22
    move-object/from16 v2, v24

    .line 380
    :goto_23
    :try_start_3a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3a} :catch_38

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_24
    :try_start_3b
    const-string v0, "videoDuration"

    .line 386
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_3b} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_2e

    .line 387
    :try_start_3c
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3c} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_2c

    move-object/from16 v24, v2

    move-object v2, v0

    goto :goto_28

    :catch_2c
    move-exception v0

    goto :goto_25

    :catch_2d
    move-exception v0

    goto :goto_27

    :catch_2e
    move-exception v0

    const/16 v21, 0x0

    .line 391
    :goto_25
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_26
    move-object/from16 v24, v2

    move-object/from16 v2, v21

    goto :goto_28

    :catch_2f
    move-exception v0

    const/16 v21, 0x0

    .line 389
    :goto_27
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_3d} :catch_38

    goto :goto_26

    :goto_28
    :try_start_3e
    const-string v0, "id"
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_3e} :catch_36

    move-object/from16 v23, v15

    .line 396
    :try_start_3f
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_3f} :catch_35

    .line 402
    :try_start_40
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_40} :catch_38

    if-eqz v0, :cond_4

    move-object/from16 v21, v5

    move-object/from16 v25, v14

    goto/16 :goto_2f

    :cond_4
    :try_start_41
    const-string v0, "channelName"

    .line 407
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_41} :catch_30

    move-object/from16 v25, v14

    move-object v14, v0

    goto :goto_29

    :catch_30
    move-exception v0

    .line 409
    :try_start_42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_42} :catch_38

    move-object/from16 v25, v14

    const/4 v14, 0x0

    .line 414
    :goto_29
    :try_start_43
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_43} :catch_31

    goto :goto_2a

    :catch_31
    move-exception v0

    move-object v9, v0

    .line 416
    :try_start_44
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_44} :catch_38

    const/4 v0, 0x0

    :goto_2a
    move-object/from16 v9, v26

    .line 421
    :try_start_45
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_45} :catch_32

    move-object/from16 v26, v9

    move-object/from16 v9, v21

    goto :goto_2b

    :catch_32
    move-object/from16 v26, v9

    const/4 v9, 0x0

    :goto_2b
    move-object/from16 v21, v5

    move-object/from16 v5, v27

    .line 427
    :try_start_46
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_46} :catch_33

    move-object/from16 v28, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v28

    goto :goto_2c

    :catch_33
    move-object/from16 v27, v5

    const/4 v5, 0x0

    .line 433
    :goto_2c
    :try_start_47
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_47} :catch_34

    goto :goto_2d

    :catch_34
    const/4 v0, 0x0

    .line 437
    :goto_2d
    :try_start_48
    invoke-virtual {v7, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setCurrentRanks(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v7, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPreviousRanks(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v7, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v7, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v7, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v7, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v7, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setDuration(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v7, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPeriodsOnChart(Ljava/lang/String;)V

    .line 446
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :catch_35
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v25, v14

    goto :goto_2e

    :catch_36
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v25, v14

    move-object/from16 v23, v15

    .line 398
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2f

    :catch_37
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move-object/from16 v21, v5

    move-object v1, v0

    .line 371
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_48} :catch_38

    :goto_2f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v21

    goto/16 :goto_21

    :catch_38
    move-exception v0

    .line 450
    :try_start_49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :cond_5
    move-object/from16 v18, v1

    move-object/from16 v21, v5

    const-string v0, "trackTypes"

    .line 458
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trackViews"

    .line 459
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 460
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 462
    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_49} :catch_50

    .line 466
    :try_start_4a
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4a} :catch_39

    goto :goto_30

    :catch_39
    move-exception v0

    move-object v5, v0

    .line 468
    :try_start_4b
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_4b} :catch_50

    const/4 v14, 0x0

    .line 472
    :goto_30
    :try_start_4c
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_4c} :catch_3a

    move-object v5, v0

    goto :goto_31

    :catch_3a
    move-exception v0

    move-object v5, v0

    .line 474
    :try_start_4d
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_4d} :catch_50

    const/4 v5, 0x0

    :goto_31
    :try_start_4e
    const-string v0, "subTitle"

    .line 478
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_4e} :catch_3b

    goto :goto_32

    :catch_3b
    move-exception v0

    .line 480
    :try_start_4f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 483
    :goto_32
    invoke-virtual {v4, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v4, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 487
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :goto_33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_4f} :catch_50

    if-ge v7, v0, :cond_7

    .line 493
    :try_start_50
    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 494
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_50} :catch_4b

    :try_start_51
    const-string v0, "name"

    .line 498
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_51} :catch_4a

    move-object/from16 v8, v25

    .line 505
    :try_start_52
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_52} :catch_3c

    move-object/from16 v9, v23

    :try_start_53
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v11, 0x2

    .line 506
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_53} :catch_3d

    move-object/from16 v11, v24

    :try_start_54
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_54} :catch_3e

    goto :goto_34

    :catch_3c
    move-object/from16 v9, v23

    :catch_3d
    move-object/from16 v11, v24

    :catch_3e
    const/4 v14, 0x0

    :goto_34
    move-object/from16 v12, v22

    .line 512
    :try_start_55
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_55} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_55} :catch_41

    .line 513
    :try_start_56
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->getVideoViewsFormat(J)Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_56} :catch_40
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_56} :catch_3f

    move-object v15, v0

    goto :goto_37

    :catch_3f
    move-exception v0

    goto :goto_35

    :catch_40
    move-exception v0

    goto :goto_36

    :catch_41
    move-exception v0

    const/4 v15, 0x0

    goto :goto_35

    :catch_42
    move-exception v0

    const/4 v15, 0x0

    goto :goto_36

    .line 517
    :goto_35
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_37

    .line 515
    :goto_36
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_57} :catch_4b

    :goto_37
    :try_start_58
    const-string v0, "encryptedVideoId"
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_58} :catch_49

    move-object/from16 p2, v1

    .line 522
    :try_start_59
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_59} :catch_43

    .line 527
    :try_start_5a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_5a} :catch_4b

    if-eqz v0, :cond_6

    :catch_43
    :goto_38
    move-object/from16 v25, v8

    move-object/from16 v23, v9

    goto/16 :goto_3e

    :cond_6
    :try_start_5b
    const-string v0, "artistName"

    .line 532
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_5b} :catch_44

    move-object/from16 v25, v8

    move-object v8, v0

    goto :goto_39

    :catch_44
    move-exception v0

    .line 534
    :try_start_5c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_5c} :catch_4b

    move-object/from16 v25, v8

    const/4 v8, 0x0

    :goto_39
    move-object/from16 v23, v9

    move-object/from16 v9, v21

    .line 539
    :try_start_5d
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_5d} :catch_45

    goto :goto_3a

    :catch_45
    move-exception v0

    move-object v5, v0

    .line 541
    :try_start_5e
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_5e} :catch_4b

    const/4 v0, 0x0

    :goto_3a
    move-object/from16 v5, v26

    .line 546
    :try_start_5f
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_5f} :catch_46

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    goto :goto_3b

    :catch_46
    move-object/from16 v26, v5

    const/4 v5, 0x0

    :goto_3b
    move-object/from16 v21, v9

    move-object/from16 v9, v27

    .line 552
    :try_start_60
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_60} :catch_47

    move-object/from16 v27, v9

    move-object/from16 v9, v16

    goto :goto_3c

    :catch_47
    move-object/from16 v27, v9

    const/4 v9, 0x0

    .line 558
    :goto_3c
    :try_start_61
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_61} :catch_48

    goto :goto_3d

    :catch_48
    const/4 v0, 0x0

    .line 563
    :goto_3d
    :try_start_62
    invoke-virtual {v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setCurrentRanks(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v4, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPreviousRanks(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v4, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v4, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v4, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v4, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v4, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setViewCount(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v4, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setPeriodsOnChart(Ljava/lang/String;)V

    .line 572
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_62} :catch_4b

    goto :goto_3e

    :catch_49
    move-object/from16 p2, v1

    goto :goto_38

    :catch_4a
    move-object/from16 p2, v1

    move-object/from16 v12, v22

    move-object/from16 v11, v24

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    goto/16 :goto_33

    :catch_4b
    move-exception v0

    .line 576
    :try_start_63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 581
    :cond_7
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;-><init>()V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_63} :catch_50

    :try_start_64
    const-string v0, "perspectiveMetadata"

    .line 586
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "entityId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_64} :catch_4f

    :try_start_65
    const-string v4, "global"
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_4c

    move-object/from16 v5, p1

    .line 589
    :try_start_66
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_4d

    const-string v6, ":"

    if-eqz v4, :cond_8

    .line 591
    :try_start_67
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 592
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    .line 593
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 596
    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 597
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 598
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    .line 599
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_4d

    goto :goto_3f

    :catch_4c
    move-object/from16 v5, p1

    .line 608
    :catch_4d
    :goto_3f
    :try_start_68
    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->setUpdate_time(Ljava/lang/String;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_68} :catch_4e

    goto :goto_41

    :catch_4e
    move-exception v0

    goto :goto_40

    :catch_4f
    move-exception v0

    move-object/from16 v5, p1

    .line 612
    :goto_40
    :try_start_69
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_41
    move-object/from16 v4, v19

    .line 616
    invoke-virtual {v1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->setArtist_list(Ljava/util/List;)V

    .line 617
    invoke-virtual {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->setTop_mv_list(Ljava/util/List;)V

    .line 618
    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->setTop_songs_list(Ljava/util/List;)V

    move-object/from16 v2, v18

    .line 619
    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->setTrending_mv_list(Ljava/util/List;)V

    .line 621
    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->setTopCountry(Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;)V

    .line 623
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->saveTopCache(Ljava/lang/String;)V

    .line 625
    invoke-static/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->saveCacheCode(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 641
    invoke-interface {v1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/DataListener;->success(Ljava/util/List;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_69} :catch_50

    return-void

    .line 645
    :catch_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
