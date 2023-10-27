from playwright.sync_api import Page, expect

# Tests for your routes go here

def test_get_homepage_not_logged_in(page, test_web_address):
    page.goto(f"http://{test_web_address}/")
    tag = page.locator('h1')
    expect(tag).to_have_text("Welcome to MakersBnB")

def test_get_homepage_logged_in(page, test_web_address):
    page.goto(f"http://{test_web_address}/login")
    page.fill('input[name="Username"]', 'Silvakippy')
    page.fill('input[name="Password"]', 'securepassword')
    page.click('input[type="submit"]')
    tag = page.locator('Body')
    expect(tag).to_contain_text('List a new Property')

def test_log_out(page, test_web_address):
    page.goto(f"http://{test_web_address}/login")
    page.fill('input[name="Username"]', 'Silvakippy')
    page.fill('input[name="Password"]', 'securepassword')
    page.click('input[type="submit"]')
    page.get_by_test_id('Logout').click()
    tag = page.locator('Body')
    page.screenshot(path='./tests/playwright/line_58.png')
    expect(tag).not_to_contain_text('List a new Property')

