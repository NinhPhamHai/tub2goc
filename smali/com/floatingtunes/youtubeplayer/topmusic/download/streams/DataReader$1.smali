.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;
.super Ljava/io/InputStream;
.source "DataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->getView(I)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;I)I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$010(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([BII)I

    move-result p1

    .line 182
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;I)I

    return p1
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    move-result-wide p1

    long-to-int p2, p1

    .line 193
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;I)I

    int-to-long p1, p2

    return-wide p1
.end method
