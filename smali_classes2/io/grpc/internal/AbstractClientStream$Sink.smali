.class public interface abstract Lio/grpc/internal/AbstractClientStream$Sink;
.super Ljava/lang/Object;
.source "AbstractClientStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Sink"
.end annotation


# virtual methods
.method public abstract cancel(Lio/grpc/Status;)V
.end method

.method public abstract request(I)V
.end method

.method public abstract writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
.end method

.method public abstract writeHeaders(Lio/grpc/Metadata;[B)V
.end method
