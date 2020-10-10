.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$1;
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

    .line 167
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->pos:I

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V

    return-void
.end method
