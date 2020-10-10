.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Trun"
.end annotation


# instance fields
.field bEntries:[B

.field bFirstSampleFlags:I

.field public bFlags:I

.field public chunkDuration:I

.field public chunkSize:I

.field dataOffset:I

.field entries_rowSize:I

.field public entryCount:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsoluteEntry(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;
    .locals 4

    .line 880
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->getEntry(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    move-result-object v0

    .line 882
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 886
    :cond_0
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x200

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    iget v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 890
    :cond_1
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 891
    iget p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iput p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    :cond_2
    if-nez p1, :cond_3

    .line 894
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 895
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    :cond_3
    return-object v0
.end method

.method public getEntry(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bEntries:[B

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    mul-int p1, p1, v1

    invoke-static {v0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 858
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    invoke-direct {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 860
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 863
    :cond_0
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 866
    :cond_1
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 867
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 869
    :cond_2
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 870
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 873
    :cond_3
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {p1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    .line 874
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    return-object v0
.end method
