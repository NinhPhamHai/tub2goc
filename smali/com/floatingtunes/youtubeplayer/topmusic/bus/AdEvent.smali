.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;
.super Ljava/lang/Object;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;
    }
.end annotation


# instance fields
.field public mAdStatus:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;->mAdStatus:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    return-void
.end method
