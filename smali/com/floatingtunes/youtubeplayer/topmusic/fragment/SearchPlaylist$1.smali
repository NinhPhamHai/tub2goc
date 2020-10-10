.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;
.super Ljava/lang/Object;
.source "SearchPlaylist.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->loadYOUTUBE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "thumbnails"

    const-string v0, "simpleText"

    const-string v1, "title"

    const-string v2, "playlistparser"

    const-string v3, "contents"

    .line 149
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 153
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    const-string v8, "response"

    .line 160
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 161
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v8, "twoColumnSearchResultsRenderer"

    .line 162
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v8, "primaryContents"

    .line 163
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v8, "sectionListRenderer"

    .line 164
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    const-string v8, "itemSectionRenderer"

    .line 166
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 167
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " e : $e"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x0

    .line 172
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 174
    :try_start_1
    invoke-virtual {v4, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v8, "playlistRenderer"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "playlistId"

    .line 176
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v10, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 180
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    const-string v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "videoCount"

    .line 181
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "videos"

    .line 182
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v12, "childVideoRenderer"

    .line 183
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    new-instance v12, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v12}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 186
    invoke-virtual {v12, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v12, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v12, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v12, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setCount(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v12, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setDescription(Ljava/lang/String;)V

    const-string v3, "search"

    .line 191
    invoke-virtual {v12, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 193
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " for e : $e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq p1, p2, :cond_2

    .line 207
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    goto :goto_3

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-ne p1, p2, :cond_2

    .line 216
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->LOADING:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 221
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
