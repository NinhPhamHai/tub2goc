.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;
.super Ljava/lang/Object;
.source "DataChange.java"


# instance fields
.field mChangeAll:Z

.field mPosition:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;->mChangeAll:Z

    .line 15
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;->mChangeAll:Z

    .line 16
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;->mPosition:I

    return-void
.end method
