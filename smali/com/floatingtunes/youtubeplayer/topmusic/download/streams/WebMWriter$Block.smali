.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Block"
.end annotation


# instance fields
.field absoluteTimecode:J

.field data:Ljava/io/InputStream;

.field dataSize:I

.field flags:B

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;

.field trackNumber:I


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isKeyframe()Z
    .locals 2

    .line 710
    iget-byte v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->flags:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 716
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->trackNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->isKeyframe()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "trackNumber=%s  isKeyFrame=%S  absoluteTimecode=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
