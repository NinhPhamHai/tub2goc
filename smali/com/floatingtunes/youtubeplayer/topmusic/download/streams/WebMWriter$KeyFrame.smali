.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyFrame"
.end annotation


# instance fields
.field atBlock:I

.field atCluster:J

.field atTimecode:J

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;JJJIJ)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-long p1, p4, p2

    .line 689
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atCluster:J

    int-to-long p1, p8

    sub-long p1, p6, p1

    cmp-long p3, p1, p4

    if-lez p3, :cond_0

    sub-long/2addr p6, p4

    long-to-int p1, p6

    .line 691
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atBlock:I

    .line 693
    :cond_0
    iput-wide p9, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atTimecode:J

    return-void
.end method
