// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AddToCartController from "./add_to_cart_controller"
application.register("add-to-cart", AddToCartController)

import FilterController from "./filter_controller"
application.register("filter", FilterController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import RecipeController from "./recipe_controller"
application.register("recipe", RecipeController)

import TooltipController from "./tooltip_controller"
application.register("tooltip", TooltipController)
