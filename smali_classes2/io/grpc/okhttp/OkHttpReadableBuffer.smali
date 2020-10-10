.class Lio/grpc/okhttp/OkHttpReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "OkHttpReadableBuffer.java"


# instance fields
.field private final buffer:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 33
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-void
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 4

    .line 80
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 81
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 82
    new-instance p1, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {p1, v0}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    return-object p1
.end method

.method public readBytes([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 58
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EOF trying to read "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 43
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
