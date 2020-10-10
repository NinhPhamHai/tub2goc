.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mp4DashChunk"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field private i:I

.field public moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 983
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    return-void
.end method


# virtual methods
.method public getNextSample()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 996
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1000
    :cond_0
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 1001
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    .line 1002
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->data:[B

    .line 1004
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->data:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-ne v1, v2, :cond_1

    return-object v0

    .line 1005
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached while reading a sample"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This chunk has info only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextSampleInfo()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;
    .locals 4

    .line 986
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 989
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->i:I

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    invoke-virtual {v2, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    return-object v0
.end method
