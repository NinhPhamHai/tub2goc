.class Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection$1;
.super Landroid/os/Handler;
.source "IndexFastScrollRecyclerSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;


# direct methods
.method constructor <init>(Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection$1;->this$0:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 260
    iget-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection$1;->this$0:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-static {p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->access$000(Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
