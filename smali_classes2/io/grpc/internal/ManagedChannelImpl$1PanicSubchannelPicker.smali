.class final Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->panic(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanicSubchannelPicker"
.end annotation


# instance fields
.field private final panicPickResult:Lio/grpc/LoadBalancer$PickResult;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 771
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 772
    sget-object p1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string p2, "Panic! This is a bug!"

    .line 774
    invoke-virtual {p1, p2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->val$t:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 773
    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withDrop(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->panicPickResult:Lio/grpc/LoadBalancer$PickResult;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 778
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->panicPickResult:Lio/grpc/LoadBalancer$PickResult;

    return-object p1
.end method
