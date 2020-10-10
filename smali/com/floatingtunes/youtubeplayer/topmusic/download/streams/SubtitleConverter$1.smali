.class Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;
.super Ljava/lang/Object;
.source "SubtitleConverter.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->dumpTTML(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final charset:Ljava/nio/charset/Charset;

.field frameIndex:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;

.field final synthetic val$ignoreEmptyFrames:Z

.field final synthetic val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;ZLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;

    iput-boolean p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$ignoreEmptyFrames:Z

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->frameIndex:I

    const-string p1, "utf-8"

    .line 33
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public yield(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$ignoreEmptyFrames:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->frameIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->frameIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 41
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    const-string v2, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 42
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->start:I

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->access$100(IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 43
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    const-string v4, " --> "

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 44
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->access$100(IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 45
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 46
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 47
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 48
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->val$out:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    return-void
.end method
