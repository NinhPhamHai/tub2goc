.class Lio/grpc/internal/InternalSubchannel$3;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->handleTermination()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$3;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 458
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$3;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$3;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v0, v1}, Lio/grpc/internal/InternalSubchannel$Callback;->onTerminated(Lio/grpc/internal/InternalSubchannel;)V

    return-void
.end method
