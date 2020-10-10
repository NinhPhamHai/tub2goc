.class abstract Lio/grpc/internal/InternalSubchannel$Callback;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onInUse(Lio/grpc/internal/InternalSubchannel;)V
.end method

.method abstract onNotInUse(Lio/grpc/internal/InternalSubchannel;)V
.end method

.method abstract onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
.end method

.method abstract onTerminated(Lio/grpc/internal/InternalSubchannel;)V
.end method
