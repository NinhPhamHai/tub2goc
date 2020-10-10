.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder$1;
.super Ljava/lang/Object;
.source "GenresAllActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

.field final synthetic val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder$1;->val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 283
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_0
    return-void
.end method
