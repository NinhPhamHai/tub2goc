.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Trex"
.end annotation


# instance fields
.field defaultSampleDescriptionIndex:I

.field defaultSampleDuration:I

.field defaultSampleFlags:I

.field defaultSampleSize:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

.field private trackId:I


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;)I
    .locals 0

    .line 935
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->trackId:I

    return p0
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;I)I
    .locals 0

    .line 935
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->trackId:I

    return p1
.end method
