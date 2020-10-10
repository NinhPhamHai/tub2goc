.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/SettingActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/SingleActivity;
.source "SettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SingleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 13
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;-><init>()V

    return-object v0
.end method

.method public createToolbarTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1102ac

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
