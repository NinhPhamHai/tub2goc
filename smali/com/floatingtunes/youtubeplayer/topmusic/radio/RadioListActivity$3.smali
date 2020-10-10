.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->onSuccess([B)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 8

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;Z)Z

    .line 120
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 123
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 124
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "radiolist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 127
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "stream"

    .line 128
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "logo300x300"

    .line 129
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "radio_name"

    .line 130
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "genres"

    .line 131
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 134
    invoke-virtual {v7, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v7, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v7, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    if-ne v2, v3, :cond_0

    .line 144
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->clearMusicBeanList()V

    goto :goto_1

    .line 146
    :cond_0
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->updateMusicBeanList(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    if-ne p1, v3, :cond_2

    .line 154
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setMusicBeanList(Ljava/util/List;)V

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->setRecycleView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
