.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;
.super Ljava/lang/Object;
.source "LockPlayEvent.java"


# instance fields
.field private isLockPlaying:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;->isLockPlaying:Z

    .line 7
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;->isLockPlaying:Z

    return-void
.end method


# virtual methods
.method public isLockPlaying()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;->isLockPlaying:Z

    return v0
.end method
