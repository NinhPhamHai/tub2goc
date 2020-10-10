.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 646
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->access$008()I

    .line 647
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->access$000()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onLovedClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    .line 666
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
