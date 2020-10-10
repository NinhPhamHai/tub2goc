.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;
.super Ljava/lang/Object;
.source "LockEvent.java"


# instance fields
.field lock:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;->lock:Z

    return-void
.end method


# virtual methods
.method public isLock()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;->lock:Z

    return v0
.end method
