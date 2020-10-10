.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;
.super Ljava/lang/Object;
.source "SearchVideo.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->loadYOUTUBE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "simpleText"

    const-string v3, ""

    const-string v4, "text"

    const-string v5, "runs"

    const-string v0, "contents"

    .line 151
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    .line 171
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 173
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "response"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "twoColumnSearchResultsRenderer"

    .line 174
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "primaryContents"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "sectionListRenderer"

    .line 175
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "itemSectionRenderer"

    .line 176
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v6, 0x0

    .line 182
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 185
    :try_start_1
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "videoRenderer"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    const-string v0, "videoId"

    .line 193
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    const-string v0, "title"

    .line 201
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "null"

    :goto_2
    move-object v12, v0

    :try_start_4
    const-string v0, "thumbnail"

    .line 211
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "thumbnails"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "url"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v0, "lengthText"

    .line 221
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v3

    :goto_3
    :try_start_6
    const-string v14, "viewCountText"

    .line 228
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 235
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_7
    const-string v8, "descriptionSnippet"

    .line 237
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    .line 238
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v10, v9, :cond_0

    .line 239
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 246
    :cond_0
    new-instance v8, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v8}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 247
    invoke-virtual {v8, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v8, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v8, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setDuration(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v8, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v8, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setViewCount(Ljava/lang/String;)V

    .line 253
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_3
    move-exception v0

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    .line 230
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    .line 214
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception v0

    .line 187
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 257
    :cond_1
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;

    invoke-direct {v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
