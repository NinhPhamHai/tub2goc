.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$1;
.super Ljava/lang/Object;
.source "FeaturedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 176
    :try_start_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getLatest_music()Ljava/util/List;

    move-result-object p1

    .line 178
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    const/4 v1, 0x0

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    const-string v2, "home_banner"

    .line 181
    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    const-string v2, "Today Hits"

    .line 182
    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setCreate_date(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setUpdate_date(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setMusicBeanList(Ljava/util/List;)V

    .line 189
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
