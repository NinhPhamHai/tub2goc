.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MDRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 562
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 564
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    invoke-static {p1, p2, v0, v1, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 571
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
