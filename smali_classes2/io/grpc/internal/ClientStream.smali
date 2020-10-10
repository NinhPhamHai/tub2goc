.class public interface abstract Lio/grpc/internal/ClientStream;
.super Ljava/lang/Object;
.source "ClientStream.java"

# interfaces
.implements Lio/grpc/internal/Stream;


# virtual methods
.method public abstract cancel(Lio/grpc/Status;)V
.end method

.method public abstract halfClose()V
.end method

.method public abstract setAuthority(Ljava/lang/String;)V
.end method

.method public abstract setDeadline(Lio/grpc/Deadline;)V
.end method

.method public abstract setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
.end method

.method public abstract setFullStreamDecompression(Z)V
.end method

.method public abstract setMaxInboundMessageSize(I)V
.end method

.method public abstract setMaxOutboundMessageSize(I)V
.end method

.method public abstract start(Lio/grpc/internal/ClientStreamListener;)V
.end method
