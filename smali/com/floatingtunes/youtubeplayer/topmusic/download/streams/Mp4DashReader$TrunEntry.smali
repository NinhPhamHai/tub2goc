.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrunEntry"
.end annotation


# instance fields
.field hasCompositionTimeOffset:Z

.field isKeyframe:Z

.field sampleCompositionTimeOffset:I

.field sampleDuration:I

.field sampleFlags:I

.field sampleSize:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
