.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mp4Track"
.end annotation


# instance fields
.field public kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

.field public trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

.field public trex:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
