.class final Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;
.super Ljava/lang/Object;
.source "PermissionRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->showWarning(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;->val$activity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;->val$activity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->requestPermissions(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void
.end method
