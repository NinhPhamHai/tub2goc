.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;
.super Ljava/lang/Object;
.source "NewTopListActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->actionStart(Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 148
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_0
    return-void
.end method
