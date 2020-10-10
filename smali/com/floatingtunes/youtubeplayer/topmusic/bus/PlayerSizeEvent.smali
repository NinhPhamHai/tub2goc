.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/PlayerSizeEvent;
.super Ljava/lang/Object;
.source "PlayerSizeEvent.java"


# instance fields
.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PlayerSizeEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PlayerSizeEvent;->type:I

    return v0
.end method
