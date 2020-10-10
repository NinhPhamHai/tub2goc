.class public abstract Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FragmentBackInterface;


# instance fields
.field protected isDataInitiated:Z

.field protected isViewInitiated:Z

.field protected isVisibleToUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fetchData()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isViewInitiated:Z

    .line 31
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->prepareFetchData()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepareFetchData()Z
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->prepareFetchData(Z)Z

    move-result v0

    return v0
.end method

.method public prepareFetchData(Z)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isViewInitiated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isDataInitiated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->fetchData()V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isDataInitiated:Z

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 23
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->isVisibleToUser:Z

    .line 24
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->prepareFetchData()Z

    return-void
.end method
