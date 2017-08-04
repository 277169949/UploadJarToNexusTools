package com.lieber.tools;

import java.util.Set;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.HasInputDevices;
import org.openqa.selenium.interactions.Keyboard;

public class ElementOperatorTools {
	private static WebDriver driver;

	// 判断一个元素是否存在

	public boolean isElementExist(By by) {
		try {
			driver.findElement(by);
			return true;
		} catch (NoSuchElementException e) {
			return false;
		}
	}

	// 查找元素

	public WebElement findById(String id) {
		WebElement element = null;
		if (this.isElementExist(By.id(id))) {
			element = driver.findElement(By.id(id));
		}
		return element;
	}
	// 获取元素列表中指定的元素

	public WebElement FindByElements(By by, int index) {
		WebElement element = null;
		if (this.elementsExists(by)) {
			element = driver.findElements(by).get(index);
		}
		return element;
	}

	// 切换窗口

	public void switchToWindow(String windowTtitle) {
		Set<String> windowHandles = driver.getWindowHandles();
		for (String handler : windowHandles) {
			driver.switchTo().window(handler);
			String title = driver.getTitle();
			if (windowTtitle.equals(title)) {
				break;
			}
		}
	}

	// 切换窗口-根据frameid

	public void switchToFrame(String frameId) {
		driver.switchTo().frame(frameId);
	}

	public void switchToFrame(int index) {
		driver.switchTo().frame(index);
	}

	// 根据元素切换窗口

	public void switchToframe(WebElement element) {

		driver.switchTo().frame(element);

	}

	// 判断是否加载有JQuery

	public Boolean JQueryLoaded() {

		Boolean loaded;

		JavascriptExecutor js = (JavascriptExecutor) driver;

		try {

			loaded = (Boolean) js.executeScript("return" + "JQuery()!=null");

		} catch (WebDriverException e) {

			loaded = false;

		}

		return loaded;

	}

	// 获取键盘

	public static Keyboard getKeyboard() {

		return ((HasInputDevices) driver).getKeyboard();

	}

	// 判断元素列表是否存在

	public boolean elementsExists(By by) {
		return (driver.findElements(by).size() > 0) ? true : false;
	}
}
