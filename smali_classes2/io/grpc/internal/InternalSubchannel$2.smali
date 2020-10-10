.class Lio/grpc/internal/InternalSubchannel$2;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->gotoState(Lio/grpc/ConnectivityStateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$newState:Lio/grpc/ConnectivityStateInfo;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$2;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$2;->val$newState:Lio/grpc/ConnectivityStateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 362
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$2;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$2;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$2;->val$newState:Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InternalSubchannel$Callback;->onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method
