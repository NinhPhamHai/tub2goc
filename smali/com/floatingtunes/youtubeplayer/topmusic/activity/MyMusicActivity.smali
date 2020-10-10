.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/MyMusicActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/SingleActivity;
.source "MyMusicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SingleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 17
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    move-result-object v0

    return-object v0
.end method

.method public createToolbarTitle()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
