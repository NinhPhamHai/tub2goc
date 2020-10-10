.class public final Lio/grpc/InternalChannelz$Security;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Security"
.end annotation


# instance fields
.field public final other:Lio/grpc/InternalChannelz$OtherSecurity;

.field public final tls:Lio/grpc/InternalChannelz$Tls;


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$Tls;)V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/InternalChannelz$Tls;

    iput-object p1, p0, Lio/grpc/InternalChannelz$Security;->tls:Lio/grpc/InternalChannelz$Tls;

    const/4 p1, 0x0

    .line 627
    iput-object p1, p0, Lio/grpc/InternalChannelz$Security;->other:Lio/grpc/InternalChannelz$OtherSecurity;

    return-void
.end method
