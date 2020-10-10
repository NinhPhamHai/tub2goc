.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;
.super Ljava/lang/Object;
.source "ManageListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->pos:I

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 178
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->pos:I

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V

    return-void
.end method
