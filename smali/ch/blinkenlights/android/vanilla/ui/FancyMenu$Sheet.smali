.class Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "FancyMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/ui/FancyMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sheet"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Landroid/content/Context;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;->this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method
