.class Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;
.super Ljava/lang/Object;
.source "ShowQueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/ShowQueueFragment;->refreshSongQueueList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

.field final synthetic val$pos:I

.field final synthetic val$scroll:Z

.field final synthetic val$service:Lch/blinkenlights/android/vanilla/PlaybackService;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/ShowQueueFragment;Lch/blinkenlights/android/vanilla/PlaybackService;IZ)V
    .locals 0

    .line 208
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$service:Lch/blinkenlights/android/vanilla/PlaybackService;

    iput p3, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$pos:I

    iput-boolean p4, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$scroll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->access$000(Lch/blinkenlights/android/vanilla/ShowQueueFragment;)Lch/blinkenlights/android/vanilla/ShowQueueAdapter;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$service:Lch/blinkenlights/android/vanilla/PlaybackService;

    iget v2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$pos:I

    invoke-virtual {v0, v1, v2}, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->setData(Lch/blinkenlights/android/vanilla/PlaybackService;I)V

    .line 212
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$scroll:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->access$100(Lch/blinkenlights/android/vanilla/ShowQueueFragment;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 215
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->access$100(Lch/blinkenlights/android/vanilla/ShowQueueFragment;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 216
    iget v2, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$pos:I

    if-lt v2, v0, :cond_0

    if-le v2, v1, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->this$0:Lch/blinkenlights/android/vanilla/ShowQueueFragment;

    iget v1, p0, Lch/blinkenlights/android/vanilla/ShowQueueFragment$1;->val$pos:I

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/ShowQueueFragment;->access$200(Lch/blinkenlights/android/vanilla/ShowQueueFragment;I)V

    :cond_1
    return-void
.end method
